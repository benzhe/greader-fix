.class public Lo3$a;
.super Lo3$e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lo3$e<",
        "TK;TV;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lo3$c;Lo3$c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo3$c<",
            "TK;TV;>;",
            "Lo3$c<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lo3$e;-><init>(Lo3$c;Lo3$c;)V

    return-void
.end method


# virtual methods
.method public c(Lo3$c;)Lo3$c;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo3$c<",
            "TK;TV;>;)",
            "Lo3$c<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    iget-object p1, p1, Lo3$c;->h:Lo3$c;

    return-object p1
.end method

.method public d(Lo3$c;)Lo3$c;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo3$c<",
            "TK;TV;>;)",
            "Lo3$c<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    iget-object p1, p1, Lo3$c;->g:Lo3$c;

    return-object p1
.end method
