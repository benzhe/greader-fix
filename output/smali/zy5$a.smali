.class public final Lzy5$a;
.super Lgj6$a;
.source "SourceFile"

# interfaces
.implements Lbk6;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzy5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgj6$a<",
        "Lzy5;",
        "Lzy5$a;",
        ">;",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lxy5;)V
    .locals 0

    .line 1
    invoke-static {}, Lzy5;->B()Lzy5;

    move-result-object p1

    invoke-direct {p0, p1}, Lgj6$a;-><init>(Lgj6;)V

    return-void
.end method
