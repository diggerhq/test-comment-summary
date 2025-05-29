#!/bin/bash

# Modify main.tf files in folders prod2 to prod20
for i in {2..20}; do
    folder_name="prod${i}"
    file_path="$folder_name/main.tf"
    
    # Check if the folder and file exist
    if [ -d "$folder_name" ] && [ -f "$file_path" ]; then
        # Replace the content of main.tf
        cat > "$file_path" << 'EOF'
resource "null_resource" "prodprod_changed" {}
EOF
        echo "Modified: $file_path"
    else
        echo "Warning: $file_path not found, skipping..."
    fi
done

echo "All main.tf files have been modified successfully!"