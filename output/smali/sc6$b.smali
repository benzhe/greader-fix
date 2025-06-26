.class public final Lsc6$b;
.super Lgj6$a;
.source "SourceFile"

# interfaces
.implements Lbk6;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsc6;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgj6$a<",
        "Lsc6;",
        "Lsc6$b;",
        ">;",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lsc6$a;)V
    .locals 0

    .line 1
    invoke-static {}, Lsc6;->B()Lsc6;

    move-result-object p1

    invoke-direct {p0, p1}, Lgj6$a;-><init>(Lgj6;)V

    return-void
.end method
