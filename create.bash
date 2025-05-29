#!/bin/bash

# Generate folders prod2 to prod20 with main.tf files
for i in {2..20}; do
    folder_name="prod${i}"
    
    # Create the folder
    mkdir -p "$folder_name"
    
    # Create main.tf file with the specified content
    cat > "$folder_name/main.tf" << 'EOF'
resource "null_resource" "prodprod" {}
EOF
    
    echo "Created folder: $folder_name with main.tf"
done

echo "All folders and main.tf files have been created successfully!"