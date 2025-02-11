#!/bin/bash

SOURCE_FORMAT="markdown_strict\
    +pipe_tables\
    +backtick_code_blocks\
    +auto_identifiers\
    +strikeout\
    +yaml_metadata_block\
    +implicit_figures\
    +all_symbols_escapable\
    +link_attributes\
    +smart\
    +fenced_divs"

# Assumes the input is in the format: 'Chapter_NN_Title/cNN_name.md'
function __get_default_output_name() {
    FILENAME="$(basename $(basename "$1") ".md")"
    echo "${FILENAME}.pdf"
}

function generate_chapter_slides() {
    local OUTPUT
    local S_FMT
    local TEMPLATE
    local INPUT

    while [[ $# > 0 ]]
    do
        case "$1" in
            -o|--output)
                OUTPUT="$2"
                shift
                shift
                ;;
            -f|--source-fmt)
                S_FMT="$2"
                shift
                shift
                ;;
            -t|--template)
                TEMPLATE="$2"
                shift
                shift
                ;;
            -i|--input)
                INPUT="$2"
                shift
                shift
                ;;
            --*|-*)
                echo "Unknown option: $1"
                return 1
                ;;
            *)
                echo "Unexpected input: '$1'"
                return 1
                ;;
        esac
    done

    OUTPUT="${OUTPUT:-"build/$(__get_default_output_name "${INPUT}")"}"
    S_FMT="${S_FMT:-"${SOURCE_FMT}"}"
    TEMPLATE="${TEMPLATE:-"pandoc/templates/default_mod.latex"}"

    OUTPUT_DIR="$(dirname "${OUTPUT}")"

    if [ ! -d "$OUTPUT_DIR" ]
    then
        echo "Creating output directory: ${OUTPUT_DIR}"
        mkdir -p "${OUTPUT_DIR}"
    fi

    pandoc -s \
        --verbose \
        --output="${OUTPUT}" \
        --slide-level 2 \
        --shift-heading-level=-1 \
        --listings \
        --toc \
        --columns=50 \
        -f "${S_FMT}" \
        --template "${TEMPLATE}" \
        --pdf-engine lualatex \
        -t beamer \
        --from=markdown+rebase_relative_paths \
        "${INPUT}"
}

ALL_MD_FILES=($(find ./Chapter* -iname "*.md"))

CUSTOM_OPTS=("./Chapter_01_Introduction/c01_training_common.md|--template "pandoc/templates/default_mod_old.latex"")
for CUSTOM in "${CUSTOM_OPTS[@]}"
do
    FILE="$(echo "${CUSTOM}" | cut -d '|' -f 1)"
    OPTS="$(echo "${CUSTOM}" | cut -d '|' -f 2)"
    echo "file with custom opts: ${FILE}"
    generate_chapter_slides --input "${FILE}" ${OPTS[@]} || exit $?
done

DEFAULT=()
for FILE in "${ALL_MD_FILES[@]}"
do
    if [[ "${FILE}" != "" ]]
    then
        DEFAULT+=("${FILE}")
    fi
done

for FILE in "${DEFAULT[@]}"
do
    echo "running default build for file: ${FILE}"
    generate_chapter_slides --input "${FILE}" || exit $?
done

exit 0
