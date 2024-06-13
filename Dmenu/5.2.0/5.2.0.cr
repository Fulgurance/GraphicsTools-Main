class Target < ISM::Software
    
    def prepareInstallation
        super

        makeSource( arguments:  "PREFIX=/usr                                                    \
                                DESTDIR=#{builtSoftwareDirectoryPath}#{Ism.settings.rootPath}   \
                                clean install",
                    path:   buildDirectoryPath)
    end

end
