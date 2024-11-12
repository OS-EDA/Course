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

pandoc -s \
    --verbose \
    --output=build/c00_preparations.pdf \
    --slide-level 2 \
    --shift-heading-level=-1 \
    --listings \
    --toc \
    --columns=50 \
    -f "$SOURCE_FORMAT" \
    --template pandoc/templates/default_mod.latex \
    --pdf-engine lualatex \
    -t beamer \
    --from=markdown+rebase_relative_paths \
    Chapter_00_Preparations/c00_preparations.md 

pandoc -s \
    --verbose \
    --output=build/c01_lecture.pdf \
    --slide-level 2 \
    --shift-heading-level=-1 \
    --toc \
    --columns=50 \
    -f "$SOURCE_FORMAT" \
    --template pandoc/templates/default_mod.latex \
    -t beamer \
    --from=markdown+rebase_relative_paths \
    Chapter_01_Introduction/c01_lecture.md 

pandoc -s \
    --verbose \
    --output=build/c02_lecture.pdf \
    --slide-level 2 \
    --shift-heading-level=-1 \
    --toc \
    --columns=50 \
    -f "$SOURCE_FORMAT" \
    --template pandoc/templates/default_mod.latex \
    -t beamer \
    --from=markdown+rebase_relative_paths \
    Chapter_02_Workflow/c02_lecture.md 

pandoc -s \
    --verbose \
    --output=build/c03_lecture.pdf \
    --slide-level 2 \
    --shift-heading-level=-1 \
    --toc \
    --columns=50 \
    -f "$SOURCE_FORMAT" \
    --template pandoc/templates/default_mod.latex \
    -t beamer \
    --from=markdown+rebase_relative_paths \
    Chapter_03_Design_and_example_pick/c03_lecture.md 

pandoc -s \
    --verbose \
    --output=build/c04_lecture.pdf \
    --slide-level 2 \
    --shift-heading-level=-1 \
    --toc \
    --columns=50 \
    -f "$SOURCE_FORMAT" \
    --template pandoc/templates/default_mod.latex \
    -t beamer \
    --from=markdown+rebase_relative_paths \
    Chapter_04_Openroad_first_run/c04_lecture.md 

pandoc -s \
    --verbose \
    --output=build/c05_lecture.pdf \
    --slide-level 2 \
    --shift-heading-level=-1 \
    --toc \
    --columns=50 \
    -f "$SOURCE_FORMAT" \
    --template pandoc/templates/default_mod.latex \
    -t beamer \
    --from=markdown+rebase_relative_paths \
    Chapter_05_PDK_Examination/c05_lecture.md 

pandoc -s \
    --verbose \
    --output=build/c03_training.pdf \
    --slide-level 2 \
    --shift-heading-level=-1 \
    --listings \
    --toc \
    --columns=50 \
    -f "$SOURCE_FORMAT" \
    --template pandoc/templates/default_mod.latex \
    -t beamer \
    --from=markdown+rebase_relative_paths \
    Chapter_03_Design_and_example_pick/c03_training.md 

pandoc -s \
    --verbose \
    --output=build/c04_training_common.pdf \
    --slide-level 2 \
    --shift-heading-level=-1 \
    --listings \
    --toc \
    --columns=50 \
    -f "$SOURCE_FORMAT" \
    --template pandoc/templates/default_mod.latex \
    -t beamer \
    --from=markdown+rebase_relative_paths \
    Chapter_04_Openroad_first_run/c04_training_common.md 

pandoc -s \
    --verbose \
    --output=build/c04_training_advanced.pdf \
    --slide-level 2 \
    --shift-heading-level=-1 \
    --listings \
    --toc \
    --columns=50 \
    -f "$SOURCE_FORMAT" \
    --template pandoc/templates/default_mod.latex \
    -t beamer \
    --from=markdown+rebase_relative_paths \
    Chapter_04_Openroad_first_run/c04_training_advanced.md 

pandoc -s \
    --verbose \
    --output=build/c04_training_bonus.pdf \
    --slide-level 2 \
    --shift-heading-level=-1 \
    --listings \
    --toc \
    --columns=50 \
    -f "$SOURCE_FORMAT" \
    --template pandoc/templates/default_mod.latex \
    -t beamer \
    --from=markdown+rebase_relative_paths \
    Chapter_04_Openroad_first_run/c04_training_bonus.md 

pandoc -s \
    --verbose \
    --output=build/c05_training_common.pdf \
    --slide-level 2 \
    --shift-heading-level=-1 \
    --listings \
    --toc \
    --columns=50 \
    -f "$SOURCE_FORMAT" \
    --template pandoc/templates/default_mod.latex \
    -t beamer \
    --from=markdown+rebase_relative_paths \
    Chapter_05_PDK_Examination/c05_training_common.md 

pandoc -s \
    --verbose \
    --output=build/c05_training_advanced.pdf \
    --slide-level 2 \
    --shift-heading-level=-1 \
    --listings \
    --toc \
    --columns=50 \
    -f "$SOURCE_FORMAT" \
    --template pandoc/templates/default_mod.latex \
    -t beamer \
    --from=markdown+rebase_relative_paths \
    Chapter_05_PDK_Examination/c05_training_advanced.md 

pandoc -s \
    --verbose \
    --output=build/c05_training_bonus.pdf \
    --slide-level 2 \
    --shift-heading-level=-1 \
    --listings \
    --toc \
    --columns=50 \
    -f "$SOURCE_FORMAT" \
    --template pandoc/templates/default_mod.latex \
    -t beamer \
    --from=markdown+rebase_relative_paths \
    Chapter_05_PDK_Examination/c05_training_bonus.md 

