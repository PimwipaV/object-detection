while IFS= read -r n k; do sed -i "s/^$n\b/$k/" "$file" > "$tmp" && mv "$tmp" "$file"; done < <(paste ../traingrandyolo/coco14oldlabel ../traingrandyolo/coco14newlabel)