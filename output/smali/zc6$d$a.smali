.class public final Lzc6$d$a;
.super Lgj6$a;
.source "SourceFile"

# interfaces
.implements Lbk6;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzc6$d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgj6$a<",
        "Lzc6$d;",
        "Lzc6$d$a;",
        ">;",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-static {}, Lzc6$d;->C()Lzc6$d;

    move-result-object v0

    invoke-direct {p0, v0}, Lgj6$a;-><init>(Lgj6;)V

    return-void
.end method

.method public constructor <init>(Lzc6$a;)V
    .locals 0

    .line 2
    invoke-static {}, Lzc6$d;->C()Lzc6$d;

    move-result-object p1

    invoke-direct {p0, p1}, Lgj6$a;-><init>(Lgj6;)V

    return-void
.end method
