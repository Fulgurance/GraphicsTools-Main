class Target < ISM::Software
    
    def prepareInstallation
        super

        makeSource(["PREFIX=/usr","DESTDIR=#{builtSoftwareDirectoryPath}#{Ism.settings.rootPath}","clean","install"],buildDirectoryPath)
    end

end
