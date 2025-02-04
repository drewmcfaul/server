﻿/*
===========================================================================

  Copyright (c) 2010-2015 Darkstar Dev Teams

  This program is free software: you can redistribute it and/or modify
  it under the terms of the GNU General Public License as published by
  the Free Software Foundation, either version 3 of the License, or
  (at your option) any later version.

  This program is distributed in the hope that it will be useful,
  but WITHOUT ANY WARRANTY; without even the implied warranty of
  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
  GNU General Public License for more details.

  You should have received a copy of the GNU General Public License
  along with this program.  If not, see http://www.gnu.org/licenses/

===========================================================================
*/

#ifndef _VERSION_H_
#define _VERSION_H_

#include <string>

#define XI_MAJOR_VERSION 2021 // Major Version
#define XI_MINOR_VERSION 2    // Minor Version
#define XI_REVISION      1    // Revision

#define XI_RELEASE_FLAG  1 // 1=Stable, 0=Unstable

#define XI_SERVER_NONE   0 // not defined
#define XI_SERVER_LOGIN  1 // login server
#define XI_SERVER_MAP    2 // map server

namespace version
{
    std::string GetGitSha();
    std::string GetGitBranch();
    std::string GetGitDate();
    std::string GetGitCommitSubject();
}

#endif /* _VERSION_H_ */
