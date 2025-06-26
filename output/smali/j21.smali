.class public final Lj21;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrv2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrv2<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Lg21;


# direct methods
.method public constructor <init>(Lg21;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lj21;->b:Lg21;

    iput-object p2, p0, Lj21;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;)V
    .locals 8

    .line 1
    iget-object p1, p0, Lj21;->b:Lg21;

    .line 2
    iget-object v0, p1, Lg21;->k:Lrl2;

    .line 3
    iget-object v1, p1, Lg21;->j:Lhq2;

    .line 4
    iget-object v2, p1, Lg21;->h:Lhl2;

    .line 5
    iget-object v3, p1, Lg21;->i:Lsk2;

    const/4 v4, 0x0

    .line 6
    iget-object v5, p0, Lj21;->a:Ljava/lang/String;

    const/4 v6, 0x0

    .line 7
    iget-object v7, v3, Lsk2;->d:Ljava/util/List;

    .line 8
    invoke-virtual/range {v1 .. v7}, Lhq2;->b(Lhl2;Lsk2;ZLjava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 9
    invoke-virtual {v0, p1}, Lrl2;->c(Ljava/util/List;)V

    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 8

    .line 1
    move-object v5, p1

    check-cast v5, Ljava/lang/String;

    .line 2
    iget-object p1, p0, Lj21;->b:Lg21;

    .line 3
    iget-object v7, p1, Lg21;->k:Lrl2;

    .line 4
    iget-object v0, p1, Lg21;->j:Lhq2;

    .line 5
    iget-object v1, p1, Lg21;->h:Lhl2;

    .line 6
    iget-object v2, p1, Lg21;->i:Lsk2;

    const/4 v3, 0x0

    .line 7
    iget-object v4, p0, Lj21;->a:Ljava/lang/String;

    .line 8
    iget-object v6, v2, Lsk2;->d:Ljava/util/List;

    .line 9
    invoke-virtual/range {v0 .. v6}, Lhq2;->b(Lhl2;Lsk2;ZLjava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 10
    invoke-virtual {v7, p1}, Lrl2;->c(Ljava/util/List;)V

    return-void
.end method
