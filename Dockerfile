# GNU Radio with UHD via PyBOMBS
# NOTE: This installs only dependencies to decrease build duration

# Derive from Ubuntu with PyBOMBS and UHD
FROM stwunsch/docker-pybombs-uhd

# Setup packages which should be installed by PyBOMBS
ENV packages "gnuradio"

# Update apt-get
RUN apt-get update

# Install previously selected packages and clean-up unused source
RUN pybombs -p ${PyBOMBS_prefix} -v install --deps-only ${packages} && rm -rf ${PyBOMBS_init}/src/*
