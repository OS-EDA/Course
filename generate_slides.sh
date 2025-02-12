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

#############
# Chapter 0 #
#############
# Lecture and Training
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

#############
# Chapter 1 #
#############
# Lecture
pandoc -s \
    --verbose \
    --output=build/c01_lecture.pdf \
    --slide-level 2 \
    --shift-heading-level=-1 \
    --listings \
    --toc \
    --columns=50 \
    -f "$SOURCE_FORMAT" \
    --template pandoc/templates/default_mod.latex \
    -t beamer \
    --from=markdown+rebase_relative_paths \
    Chapter_01_Introduction/c01_lecture.md 

# Training common
pandoc -s \
    --verbose \
    --output=build/c01_training_common.pdf \
    --slide-level 2 \
    --shift-heading-level=-1 \
    --listings \
    --toc \
    --columns=50 \
    -f "$SOURCE_FORMAT" \
    --template pandoc/templates/default_mod_old.latex \
    -t beamer \
    --from=markdown+rebase_relative_paths \
    Chapter_01_Introduction/c01_training_common.md 

pandoc -s \
    --verbose \
    --output=build/c01_training_advanced.pdf \
    --slide-level 2 \
    --shift-heading-level=-1 \
    --listings \
    --toc \
    --columns=50 \
    -f "$SOURCE_FORMAT" \
    --template pandoc/templates/default_mod.latex \
    -t beamer \
    --from=markdown+rebase_relative_paths \
    Chapter_01_Introduction/c01_training_advanced.md 

pandoc -s \
    --verbose \
    --output=build/c01_training_bonus.pdf \
    --slide-level 2 \
    --shift-heading-level=-1 \
    --listings \
    --toc \
    --columns=50 \
    -f "$SOURCE_FORMAT" \
    --template pandoc/templates/default_mod.latex \
    -t beamer \
    --from=markdown+rebase_relative_paths \
    Chapter_01_Introduction/c01_training_bonus.md 

# Questions
pandoc -s \
    --verbose \
    --output=build/c01_questions.pdf \
    --slide-level 2 \
    --shift-heading-level=-1 \
    --listings \
    --toc \
    --columns=50 \
    -f "$SOURCE_FORMAT" \
    --template pandoc/templates/default_mod.latex \
    -t beamer \
    --from=markdown+rebase_relative_paths \
    Chapter_01_Introduction/c01_questions.md 

#############
# Chapter 2 #
#############
# Lecture
pandoc -s \
    --verbose \
    --output=build/c02_lecture.pdf \
    --slide-level 2 \
    --shift-heading-level=-1 \
    --listings \
    --toc \
    --columns=50 \
    -f "$SOURCE_FORMAT" \
    --template pandoc/templates/default_mod.latex \
    -t beamer \
    --from=markdown+rebase_relative_paths \
    Chapter_02_OpenROAD_tools/c02_lecture.md 

# Training common
pandoc -s \
    --verbose \
    --output=build/c02_training_common.pdf \
    --slide-level 2 \
    --shift-heading-level=-1 \
    --listings \
    --toc \
    --columns=50 \
    -f "$SOURCE_FORMAT" \
    --template pandoc/templates/default_mod.latex \
    -t beamer \
    --from=markdown+rebase_relative_paths \
    Chapter_02_OpenROAD_tools/c02_training_common.md 

# Training advanced
pandoc -s \
    --verbose \
    --output=build/c02_training_advanced.pdf \
    --slide-level 2 \
    --shift-heading-level=-1 \
    --listings \
    --toc \
    --columns=50 \
    -f "$SOURCE_FORMAT" \
    --template pandoc/templates/default_mod.latex \
    -t beamer \
    --from=markdown+rebase_relative_paths \
    Chapter_02_OpenROAD_tools/c02_training_advanced.md 

# Questions
pandoc -s \
    --verbose \
    --output=build/c02_questions.pdf \
    --slide-level 2 \
    --shift-heading-level=-1 \
    --listings \
    --toc \
    --columns=50 \
    -f "$SOURCE_FORMAT" \
    --template pandoc/templates/default_mod.latex \
    -t beamer \
    --from=markdown+rebase_relative_paths \
    Chapter_02_OpenROAD_tools/c02_questions.md 

#############
# Chapter 3 #
#############
# Lecture
pandoc -s \
    --verbose \
    --output=build/c03_lecture.pdf \
    --slide-level 2 \
    --shift-heading-level=-1 \
    --listings \
    --toc \
    --columns=50 \
    -f "$SOURCE_FORMAT" \
    --template pandoc/templates/default_mod.latex \
    -t beamer \
    --from=markdown+rebase_relative_paths \
    Chapter_03_Verilog/c03_lecture.md 

# Training common
pandoc -s \
    --verbose \
    --output=build/c03_training_common.pdf \
    --slide-level 2 \
    --shift-heading-level=-1 \
    --listings \
    --toc \
    --columns=50 \
    -f "$SOURCE_FORMAT" \
    --template pandoc/templates/default_mod.latex \
    -t beamer \
    --from=markdown+rebase_relative_paths \
    Chapter_03_Verilog/c03_training_common.md 

# Training advanced
pandoc -s \
    --verbose \
    --output=build/c03_training_advanced.pdf \
    --slide-level 2 \
    --shift-heading-level=-1 \
    --listings \
    --toc \
    --columns=50 \
    -f "$SOURCE_FORMAT" \
    --template pandoc/templates/default_mod.latex \
    -t beamer \
    --from=markdown+rebase_relative_paths \
    Chapter_03_Verilog/c03_training_advanced.md 

# Questions
pandoc -s \
    --verbose \
    --output=build/c03_questions.pdf \
    --slide-level 2 \
    --shift-heading-level=-1 \
    --listings \
    --toc \
    --columns=50 \
    -f "$SOURCE_FORMAT" \
    --template pandoc/templates/default_mod.latex \
    -t beamer \
    --from=markdown+rebase_relative_paths \
    Chapter_03_Verilog/c03_questions.md 

#############
# Chapter 4 #
#############
# Lecture
pandoc -s \
    --verbose \
    --output=build/c04_lecture.pdf \
    --slide-level 2 \
    --shift-heading-level=-1 \
    --listings \
    --toc \
    --columns=50 \
    -f "$SOURCE_FORMAT" \
    --template pandoc/templates/default_mod.latex \
    -t beamer \
    --from=markdown+rebase_relative_paths \
    Chapter_04_OpenROAD_first_run/c04_lecture.md

# Training common
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
    Chapter_04_OpenROAD_first_run/c04_training_common.md 

# Training advanced
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
    Chapter_04_OpenROAD_first_run/c04_training_advanced.md 

# Training bonus
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
    Chapter_04_OpenROAD_first_run/c04_training_bonus.md 

# Questions
pandoc -s \
    --verbose \
    --output=build/c04_questions.pdf \
    --slide-level 2 \
    --shift-heading-level=-1 \
    --listings \
    --toc \
    --columns=50 \
    -f "$SOURCE_FORMAT" \
    --template pandoc/templates/default_mod.latex \
    -t beamer \
    --from=markdown+rebase_relative_paths \
    Chapter_04_OpenROAD_first_run/c04_questions.md 

#############
# Chapter 5 #
#############
# Lecture
pandoc -s \
    --verbose \
    --output=build/c05_lecture.pdf \
    --slide-level 2 \
    --shift-heading-level=-1 \
    --listings \
    --toc \
    --columns=50 \
    -f "$SOURCE_FORMAT" \
    --template pandoc/templates/default_mod.latex \
    -t beamer \
    --from=markdown+rebase_relative_paths \
    Chapter_05_PDK/c05_lecture.md 

#Training common
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
    Chapter_05_PDK/c05_training_common.md 

# #Training advanced
# pandoc -s \
#     --verbose \
#     --output=build/c05_training_advanced.pdf \
#     --slide-level 2 \
#     --shift-heading-level=-1 \
#     --listings \
#     --toc \
#     --columns=50 \
#     -f "$SOURCE_FORMAT" \
#     --template pandoc/templates/default_mod.latex \
#     -t beamer \
#     --from=markdown+rebase_relative_paths \
#     Chapter_05_PDK/c05_training_advanced.md 

#Training bonus
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
    Chapter_05_PDK/c05_training_bonus.md 

# Questions
pandoc -s \
    --verbose \
    --output=build/c05_questions.pdf \
    --slide-level 2 \
    --shift-heading-level=-1 \
    --listings \
    --toc \
    --columns=50 \
    -f "$SOURCE_FORMAT" \
    --template pandoc/templates/default_mod.latex \
    -t beamer \
    --from=markdown+rebase_relative_paths \
    Chapter_05_PDK/c05_questions.md 

#############
# Chapter 6 #
#############
#Lecture
pandoc -s \
    --verbose \
    --output=build/c06_lecture.pdf \
    --slide-level 2 \
    --shift-heading-level=-1 \
    --listings \
    --toc \
    --columns=50 \
    -f "$SOURCE_FORMAT" \
    --template pandoc/templates/default_mod.latex \
    -t beamer \
    --from=markdown+rebase_relative_paths \
    Chapter_06_OpenROAD_gui/c06_lecture.md 

#Training common
pandoc -s \
    --verbose \
    --output=build/c06_training_common.pdf \
    --slide-level 2 \
    --shift-heading-level=-1 \
    --listings \
    --toc \
    --columns=50 \
    -f "$SOURCE_FORMAT" \
    --template pandoc/templates/default_mod.latex \
    -t beamer \
    --from=markdown+rebase_relative_paths \
    Chapter_06_OpenROAD_gui/c06_training_common.md 

# Questions
pandoc -s \
    --verbose \
    --output=build/c06_questions.pdf \
    --slide-level 2 \
    --shift-heading-level=-1 \
    --listings \
    --toc \
    --columns=50 \
    -f "$SOURCE_FORMAT" \
    --template pandoc/templates/default_mod.latex \
    -t beamer \
    --from=markdown+rebase_relative_paths \
    Chapter_06_OpenROAD_gui/c06_questions.md 

#############
# Chapter 7 #
#############
#Lecture
pandoc -s \
    --verbose \
    --output=build/c07_lecture.pdf \
    --slide-level 2 \
    --shift-heading-level=-1 \
    --listings \
    --toc \
    --columns=50 \
    -f "$SOURCE_FORMAT" \
    --template pandoc/templates/default_mod.latex \
    -t beamer \
    --from=markdown+rebase_relative_paths \
    Chapter_07_OpenROAD_flow_scripts/c07_lecture.md 

#Training common
pandoc -s \
    --verbose \
    --output=build/c07_training_1_common.pdf \
    --slide-level 2 \
    --shift-heading-level=-1 \
    --listings \
    --toc \
    --columns=50 \
    -f "$SOURCE_FORMAT" \
    --template pandoc/templates/default_mod.latex \
    -t beamer \
    --from=markdown+rebase_relative_paths \
    Chapter_07_OpenROAD_flow_scripts/c07_training_common.md 

# Questions
pandoc -s \
    --verbose \
    --output=build/c07_questions.pdf \
    --slide-level 2 \
    --shift-heading-level=-1 \
    --listings \
    --toc \
    --columns=50 \
    -f "$SOURCE_FORMAT" \
    --template pandoc/templates/default_mod.latex \
    -t beamer \
    --from=markdown+rebase_relative_paths \
    Chapter_07_OpenROAD_flow_scripts/c07_questions.md 

#############
# Chapter 8 #
#############
#Lecture
pandoc -s \
    --verbose \
    --output=build/c08_lecture.pdf \
    --slide-level 2 \
    --shift-heading-level=-1 \
    --listings \
    --toc \
    --columns=50 \
    -f "$SOURCE_FORMAT" \
    --template pandoc/templates/default_mod.latex \
    -t beamer \
    --from=markdown+rebase_relative_paths \
    Chapter_08_Tapeout/c08_lecture.md 

#Training common
pandoc -s \
    --verbose \
    --output=build/c08_training_common.pdf \
    --slide-level 2 \
    --shift-heading-level=-1 \
    --listings \
    --toc \
    --columns=50 \
    -f "$SOURCE_FORMAT" \
    --template pandoc/templates/default_mod.latex \
    -t beamer \
    --from=markdown+rebase_relative_paths \
    Chapter_08_Tapeout/c08_training_common.md 

# Questions
pandoc -s \
    --verbose \
    --output=build/c08_questions.pdf \
    --slide-level 2 \
    --shift-heading-level=-1 \
    --listings \
    --toc \
    --columns=50 \
    -f "$SOURCE_FORMAT" \
    --template pandoc/templates/default_mod.latex \
    -t beamer \
    --from=markdown+rebase_relative_paths \
    Chapter_08_Tapeout/c08_questions.md 
