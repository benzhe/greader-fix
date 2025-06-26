.class public final Lyc6$f$a;
.super Lgj6$a;
.source "SourceFile"

# interfaces
.implements Lbk6;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lyc6$f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgj6$a<",
        "Lyc6$f;",
        "Lyc6$f$a;",
        ">;",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-static {}, Lyc6$f;->B()Lyc6$f;

    move-result-object v0

    invoke-direct {p0, v0}, Lgj6$a;-><init>(Lgj6;)V

    return-void
.end method

.method public constructor <init>(Lyc6$a;)V
    .locals 0

    .line 2
    invoke-static {}, Lyc6$f;->B()Lyc6$f;

    move-result-object p1

    invoke-direct {p0, p1}, Lgj6$a;-><init>(Lgj6;)V

    return-void
.end method
