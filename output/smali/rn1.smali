.class public final synthetic Lrn1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lem3;


# instance fields
.field public final e:Lxw0;


# direct methods
.method public constructor <init>(Lxw0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lrn1;->e:Lxw0;

    return-void
.end method


# virtual methods
.method public final c0(Lfm3;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lrn1;->e:Lxw0;

    .line 2
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 3
    iget-boolean p1, p1, Lfm3;->j:Z

    if-eqz p1, :cond_0

    const-string p1, "1"

    goto :goto_0

    :cond_0
    const-string p1, "0"

    :goto_0
    const-string v2, "isVisible"

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "onAdVisibilityChanged"

    .line 4
    invoke-interface {v0, p1, v1}, Lod0;->x(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method
