.class public final Lzf2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcb3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcb3<",
        "Lxf2;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lmb3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmb3<",
            "Lzv2;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 2

    .line 1
    invoke-static {}, Lyn2;->a()Lzv2;

    move-result-object v0

    .line 2
    new-instance v1, Lxf2;

    invoke-direct {v1, v0}, Lxf2;-><init>(Lzv2;)V

    return-object v1
.end method
