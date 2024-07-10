#!/bin/bash

# 指定图片文件夹路径
IMAGE_DIR="./basic_git/git_src"
# 指定输出 Markdown 文件路径
OUTPUT_MD="output.md"

# 清空或创建输出文件
> "$OUTPUT_MD"

# 查找图片文件并按创建时间排序
find "$IMAGE_DIR" -type f \( -iname "*.jpg" -o -iname "*.jpeg" -o -iname "*.png" -o -iname "*.gif" \) | while read -r img_path; do
    # 获取图片文件名
    img_name=$(basename "$img_path")
    # 获取相对路径
    relative_path=$(realpath --relative-to="$IMAGE_DIR" "$img_path")
    # 生成 Markdown 行
    md_line="${img_name} ![${img_name}](${relative_path})"
    # 将 Markdown 行追加到输出文件
    echo "$md_line" >> "$OUTPUT_MD"
done

echo "Markdown 文件已生成：$OUTPUT_MD"
