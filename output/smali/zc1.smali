.class public final Lzc1;
.super Lxd1;
.source "SourceFile"

# interfaces
.implements Led1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lxd1<",
        "Led1;",
        ">;",
        "Led1;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lsf1<",
            "Led1;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lxd1;-><init>(Ljava/util/Set;)V

    return-void
.end method


# virtual methods
.method public final C()V
    .locals 1

    .line 1
    sget-object v0, Lcd1;->a:Lzd1;

    invoke-virtual {p0, v0}, Lxd1;->D0(Lzd1;)V

    return-void
.end method
