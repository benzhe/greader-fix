.class public final Ljc6$b;
.super Lgj6$a;
.source "SourceFile"

# interfaces
.implements Lkc6;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljc6;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgj6$a<",
        "Ljc6;",
        "Ljc6$b;",
        ">;",
        "Lkc6;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-static {}, Ljc6;->B()Ljc6;

    move-result-object v0

    invoke-direct {p0, v0}, Lgj6$a;-><init>(Lgj6;)V

    return-void
.end method

.method public constructor <init>(Ljc6$a;)V
    .locals 0

    .line 2
    invoke-static {}, Ljc6;->B()Ljc6;

    move-result-object p1

    invoke-direct {p0, p1}, Lgj6$a;-><init>(Lgj6;)V

    return-void
.end method


# virtual methods
.method public i()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lbd6;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lgj6$a;->f:Lgj6;

    check-cast v0, Ljc6;

    .line 2
    invoke-virtual {v0}, Ljc6;->i()Ljava/util/List;

    move-result-object v0

    .line 3
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
