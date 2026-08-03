#
# Flox
#
# Link: https://www.flox.dev

# ------------------------------------------------------------------------------
# Configuration
# ------------------------------------------------------------------------------

SPACESHIP_FLOX_SHOW="${SPACESHIP_FLOX_SHOW=true}"
SPACESHIP_FLOX_ASYNC="${SPACESHIP_FLOX_ASYNC=false}"
SPACESHIP_FLOX_PREFIX="${SPACESHIP_FLOX_PREFIX="in "}"
SPACESHIP_FLOX_SUFFIX="${SPACESHIP_FLOX_SUFFIX="$SPACESHIP_PROMPT_DEFAULT_SUFFIX"}"
SPACESHIP_FLOX_SYMBOL="${SPACESHIP_FLOX_SYMBOL="$"}"
SPACESHIP_FLOX_COLOR="${SPACESHIP_FLOX_COLOR="yellow"}"
SPACESHIP_FLOX_DEFAULT_ENV_SHOW="${SPACESHIP_FLOX_DEFAULT_ENV_SHOW=false}"

# ------------------------------------------------------------------------------
# Section
# ------------------------------------------------------------------------------

# Show flox environment
# spaceship_ prefix before section's name is required!
# Otherwise this section won't be loaded.
spaceship_flox() {
  # If SPACESHIP_FLOX_SHOW is false, don't show flox section
  [[ $SPACESHIP_FLOX_SHOW == false ]] && return

  # Only render if a Flox environment is actively loaded
  [[ -n "$FLOX_PROMPT_ENVIRONMENTS" ]] || return

  local env_raw="${FLOX_PROMPT_ENVIRONMENTS}"

  # Remove default environment from prompt
  if [[ $SPACESHIP_FLOX_DEFAULT_ENV_SHOW == false ]]; then
    env_raw="${env_raw/% default/}"
  fi

  local flox_content="(${env_raw})"

  # Use Spaceship's API to construct the segment cleanly
  # Options: spaceship::section <color> <prefix> <content> <suffix>
  spaceship::section \
    --color "$SPACESHIP_FLOX_COLOR" \
    --prefix "$SPACESHIP_FLOX_PREFIX" \
    --suffix "$SPACESHIP_FLOX_SUFFIX" \
    --symbol "$SPACESHIP_FLOX_SYMBOL" \
    "$flox_content"
}
