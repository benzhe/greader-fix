.class public final Lrc6$c$a;
.super Lgj6$a;
.source "SourceFile"

# interfaces
.implements Lbk6;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrc6$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgj6$a<",
        "Lrc6$c;",
        "Lrc6$c$a;",
        ">;",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-static {}, Lrc6$c;->B()Lrc6$c;

    move-result-object v0

    invoke-direct {p0, v0}, Lgj6$a;-><init>(Lgj6;)V

    return-void
.end method

.method public constructor <init>(Lrc6$a;)V
    .locals 0

    .line 2
    invoke-static {}, Lrc6$c;->B()Lrc6$c;

    move-result-object p1

    invoke-direct {p0, p1}, Lgj6$a;-><init>(Lgj6;)V

    return-void
.end method


# virtual methods
.method public r(Ljava/lang/String;)Lrc6$c$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lgj6$a;->o()V

    .line 2
    iget-object v0, p0, Lgj6$a;->f:Lgj6;

    check-cast v0, Lrc6$c;

    invoke-static {v0, p1}, Lrc6$c;->D(Lrc6$c;Ljava/lang/String;)V

    return-object p0
.end method
