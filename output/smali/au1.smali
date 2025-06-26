.class public final Lau1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lzv2;

.field public final b:Lzv2;

.field public final c:Lkv1;

.field public final d:Lxa3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxa3<",
            "Lmw1;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lzv2;Lzv2;Lkv1;Lxa3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzv2;",
            "Lzv2;",
            "Lkv1;",
            "Lxa3<",
            "Lmw1;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lau1;->a:Lzv2;

    .line 3
    iput-object p2, p0, Lau1;->b:Lzv2;

    .line 4
    iput-object p3, p0, Lau1;->c:Lkv1;

    .line 5
    iput-object p4, p0, Lau1;->d:Lxa3;

    return-void
.end method
