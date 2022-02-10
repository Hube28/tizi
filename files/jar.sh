## jar

PRG="$0"
while [ -h "$PRG" ] ; do
  ls=`ls -ld "$PRG"`
  link=`expr "$ls" : '.*-> \(.*\)$'`
  if expr "$link" : '/.*' > /dev/null; then
    PRG="$link"
  else
    PRG=`dirname "$PRG"`/"$link"
  fi
done
PRGDIR=`dirname "$PRG"`
#

# call invoke.sh to setup java environment
"$PRGDIR/d2j_invoke.sh" "com.googlecode.dex2jar.tools.Dex2jarCmd" "$@"
