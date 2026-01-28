# =========================================
# CQJTUThesis Makefile for Linux/Mac
# =========================================

.PHONY: all thesis doc extract clean cleanall help

PACKAGE = cqjtuthesis
MAIN = main
CLS = $(PACKAGE).cls
DTX = $(PACKAGE).dtx
INS = $(PACKAGE).ins

# 默认目标
all: thesis

# 编译论文
thesis: extract
	@echo "========================================"
	@echo "编译论文..."
	@echo "========================================"
	xelatex -interaction=nonstopmode $(MAIN)
	-bibtex $(MAIN)
	xelatex -interaction=nonstopmode $(MAIN)
	xelatex -interaction=nonstopmode $(MAIN)
	@echo "========================================"
	@echo "论文编译完成！生成文件: $(MAIN).pdf"
	@echo "========================================"

# 编译用户手册
doc:
	@echo "========================================"
	@echo "编译用户手册..."
	@echo "========================================"
	xelatex -interaction=nonstopmode $(DTX)
	-makeindex -s gind.ist -o $(PACKAGE).ind $(PACKAGE).idx
	-makeindex -s gglo.ist -o $(PACKAGE).gls $(PACKAGE).glo
	xelatex -interaction=nonstopmode $(DTX)
	xelatex -interaction=nonstopmode $(DTX)
	@echo "========================================"
	@echo "用户手册编译完成！生成文件: $(PACKAGE).pdf"
	@echo "========================================"

# 从DTX提取文档类
extract: $(CLS)

$(CLS): $(DTX) $(INS)
	@echo "========================================"
	@echo "提取文档类文件..."
	@echo "========================================"
	xelatex $(INS)
	@echo "文档类提取完成！"

# 清理临时文件
clean:
	@echo "========================================"
	@echo "清理临时文件..."
	@echo "========================================"
	-@rm -f *.aux *.log *.out *.toc *.bbl *.blg *.idx *.ind *.glo *.gls *.ilg *.lot *.lof
	-@rm -f contents/*.aux
	@echo "临时文件清理完成！"

# 清理所有生成文件
cleanall: clean
	@echo "========================================"
	@echo "清理所有生成文件..."
	@echo "========================================"
	-@rm -f $(MAIN).pdf $(PACKAGE).pdf $(CLS)
	@echo "所有生成文件清理完成！"

# 显示帮助信息
help:
	@echo "========================================"
	@echo "CQJTUThesis Makefile 使用说明"
	@echo "========================================"
	@echo ""
	@echo "用法: make [目标]"
	@echo ""
	@echo "可用目标:"
	@echo "  thesis    - 编译论文（默认）"
	@echo "  doc       - 编译用户手册"
	@echo "  extract   - 从DTX文件提取文档类"
	@echo "  clean     - 清理临时文件"
	@echo "  cleanall  - 清理所有生成文件"
	@echo "  help      - 显示此帮助信息"
	@echo ""
	@echo "示例:"
	@echo "  make thesis     编译论文"
	@echo "  make clean      清理临时文件"
	@echo ""
	@echo "========================================"
