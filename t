[1m[0m[38;5;11m──────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────[0m
[38;5;11mmodified: build.gradle
[38;5;11m──────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────[0m
[36m[1m[38;5;13m@ build.gradle:10 @[0m[1m[38;5;146m repositories {[0m
}[m
[m
dependencies {[m
[31m    implementation '[7mgradle.plugin.com.github.johnrengelman:shadow:7.1.2[27m'[m
[32m[m[32m    implementation '[7mcom.github.johnrengelman:shadow:8.1.1[27m'[m
    implementation 'gradle.plugin.com.hierynomus.gradle.plugins:license-gradle-plugin:0.16.1'[m
[31m    implementation 'com.diffplug.spotless:spotless-plugin-gradle:6.[7m9.1[27m'[m
[31m    implementation 'com.github.spotbugs.snom:spotbugs-gradle-plugin:5.[7m0.9[27m'[m
[31m    implementation 'pl.allegro.tech.build:axion-release-plugin:1.1[7m4.0[27m'[m
[32m[m[32m    implementation 'com.diffplug.spotless:spotless-plugin-gradle:6.[7m20.0[27m'[m
[32m[m[32m    implementation 'com.github.spotbugs.snom:spotbugs-gradle-plugin:5.[7m1.0[27m'[m
[32m[m[32m    implementation 'pl.allegro.tech.build:axion-release-plugin:1.1[7m5.4[27m'[m
}[m
\ No newline at end of file[m
[1m[0m[38;5;11m──────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────[0m
[38;5;11mmodified: src/main/groovy/de.featjar.java.gradle
[38;5;11m──────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────[0m
[36m[1m[38;5;13m@ src/main/groovy/de.featjar.java.gradle:29 @[0m[1m[38;5;146m dependencies {[0m
[m
java {[m
    sourceCompatibility = 1.11[m
[31m    [7m//[27mwithSourcesJar()[m
[31m    [7m//[27mwithJavadocJar()[m
[32m[m[32m    [7m[27mwithSourcesJar()[m
[32m[m[32m    [7m[27mwithJavadocJar()[m
}[m
[m
test {[m
[36m[1m[38;5;13m@ src/main/groovy/de.featjar.java.gradle:57 @[0m[1m[38;5;146m license {[0m
    ext {[m
        licence_program = rootProject.name[m
        licence_year = Calendar.getInstance().get(Calendar.YEAR)[m
[31m        licence_author = [7m"Sebastian Krieter, Elias Kuiter"[27m[m
[32m[m[32m        licence_author = [7m'FeatJAR-Development-Team'[27m[m
        licence_url = 'https://github.com/FeatJAR'[m
    }[m
    include "**/*.java"[m
[36m[1m[38;5;13m@ src/main/groovy/de.featjar.java.gradle:77 @[0m[1m[38;5;146m spotless {[0m
}[m
[m
def spotbugsConfiguration = {[m
[31m[7m	[27mshowStackTraces = true[m
[31m[7m	[27meffort = 'max'[m
[31m[7m	[27mreports {[m
[32m[m[32m[7m    [27mshowStackTraces = true[m
[32m[m[32m[7m    [27meffort = 'max'[m
[32m[m[32m[7m    [27mreports {[m
        html {[m
[32m[m[32m            enabled = true // TODO: fix spotbugs config and re-enable[m
            required = true[m
[31m            outputLocation = file("$buildDir/reports/spotbugs/main/spotbugs.html")[m
            stylesheet = 'fancy-hist.xsl'[m
        }[m
    }[m
[36m[1m[38;5;13m@ src/main/groovy/de.featjar.java.gradle:93 @[0m[1m[38;5;146m spotbugs {[0m
}[m
[m
spotbugsMain {[m
[31m    showStackTraces = true[m
[31m	effort = 'max'[m
[31m	reports {[m
[31m        html {[m
[31m            required = true[m
[31m            outputLocation = file("$buildDir/reports/spotbugs/main/spotbugs.html")[m
[31m            stylesheet = 'fancy-hist.xsl'[m
[31m        }[m
[31m    }[m
[32m[m[32m    configure spotbugsConfiguration[m
[32m[m[32m    reports.html.outputLocation = file("$buildDir/reports/spotbugs/main/spotbugs.html")[m
}[m
[m
spotbugsTest {[m
[31m    showStackTraces = true[m
[31m	effort = 'max'[m
[31m	reports {[m
[31m        html {[m
[31m            required = true[m
[31m            outputLocation = file("$buildDir/reports/spotbugs/test/spotbugs.html")[m
[31m            stylesheet = 'fancy-hist.xsl'[m
[31m        }[m
[31m    }[m
[32m[m[32m    configure spotbugsConfiguration[m
[32m[m[32m    reports.html.outputLocation = file("$buildDir/reports/spotbugs/test/spotbugs.html")[m
}[m
[m
javadoc {[m
    failOnError = false[m
[32m[m[32m    javadocTool = javaToolchains.javadocToolFor {[m
[32m[m[32m        languageVersion.set(JavaLanguageVersion.of(20))[m
[32m[m[32m    }[m
[32m[m[32m    javadoc.options.addStringOption('Xdoclint:none', '-quiet')[m
}[m
\ No newline at end of file[m
