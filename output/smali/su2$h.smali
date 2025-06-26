.class public final Lsu2$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsu2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "h"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field public final e:Lsu2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lsu2<",
            "TV;>;"
        }
    .end annotation
.end field

.field public final f:Law2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Law2<",
            "+TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lsu2;Law2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lsu2<",
            "TV;>;",
            "Law2<",
            "+TV;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lsu2$h;->e:Lsu2;

    .line 3
    iput-object p2, p0, Lsu2$h;->f:Law2;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lsu2$h;->e:Lsu2;

    invoke-static {v0}, Lsu2;->u(Lsu2;)Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lsu2$h;->f:Law2;

    .line 3
    invoke-static {v0}, Lsu2;->c(Law2;)Ljava/lang/Object;

    move-result-object v0

    .line 4
    sget-object v1, Lsu2;->j:Lsu2$c;

    .line 5
    iget-object v2, p0, Lsu2$h;->e:Lsu2;

    invoke-virtual {v1, v2, p0, v0}, Lsu2$c;->e(Lsu2;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    iget-object v0, p0, Lsu2$h;->e:Lsu2;

    .line 7
    invoke-static {v0}, Lsu2;->q(Lsu2;)V

    :cond_1
    return-void
.end method
