#!/bin/bash

# Configuration
INTERVAL=30 # Time in seconds to check for changes
BRANCH="main"

echo "============================================="
echo "🚀 Django Practice Auto-Push Started!"
echo "Checking for changes every $INTERVAL seconds..."
echo "Press [CTRL+C] to stop."
echo "============================================="

while true; do
    if [[ -n $(git status --porcelain) ]]; then
        echo "📝 Practice changes detected! Auto-committing..."
        git add -A
        
        COMMIT_MSG="auto: Django practice update at $(date '+%Y-%m-%d %H:%M:%S')"
        git commit -m "$COMMIT_MSG"
        
        echo "📤 Uploading automatically to your new repo..."
        git push origin "$BRANCH"
        
        if [ $? -eq 0 ]; then
            echo "✅ Uploaded successfully!"
        else
            echo "❌ Upload failed. Make sure your GitHub repository exists, is linked, and you are online."
        fi
        echo "---------------------------------------------"
    fi
    sleep $INTERVAL
done
