# typed: false
# frozen_string_literal: true

# This file was generated by Homebrew Releaser. DO NOT EDIT.
class Somafm < Formula
  desc "Cli application to listen to somafm stations"
  homepage "https://github.com/nicarl/somafm"
  url "https://github.com/nicarl/somafm/archive/v0.3.0.tar.gz"
  sha256 "25767934c830d0542be2005176650903b894989265d63dc0fb88ecb114dbddda"
  license "Apache-2.0"

  depends_on "go" => :build

  def install
    (buildpath/"src/github.com/nicarl/somafm").install buildpath.children
    cd "src/github.com/nicarl/somafm" do
      system "go", "build", "-o", bin/"somafm", "./cmd/somafm.go"
    end
  end
end
