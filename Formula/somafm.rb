# typed: false
# frozen_string_literal: true
# This file was generated by Homebrew Releaser. DO NOT EDIT.
class Somafm < Formula
  desc "Cli application to listen to somafm stations"
  homepage "https://github.com/nicarl/somafm"
  url "https://github.com/nicarl/somafm/archive/v0.2.10.tar.gz"
  sha256 "7fcbb52ca7777d3de78b735ad53cfd84847a335a9231ebdbb08e428d1ac14b70"
  license "Apache-2.0"
  depends_on "go" => :build
  def install
    (buildpath/"src/github.com/nicarl/somafm").install buildpath.children
    cd "src/github.com/nicarl/somafm" do
      system "go", "build", "-o", bin/"somafm", "./cmd/somafm.go"
    end
  end
end
