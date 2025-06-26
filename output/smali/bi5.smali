.class public Lbi5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic e:J

.field public final synthetic f:Ljava/lang/String;

.field public final synthetic g:Lii5;


# direct methods
.method public constructor <init>(Lii5;JLjava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lbi5;->g:Lii5;

    iput-wide p2, p0, Lbi5;->e:J

    iput-object p4, p0, Lbi5;->f:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lbi5;->g:Lii5;

    invoke-virtual {v0}, Lii5;->p()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lbi5;->g:Lii5;

    .line 3
    iget-object v0, v0, Lii5;->l:Luj5;

    .line 4
    iget-wide v1, p0, Lbi5;->e:J

    iget-object v3, p0, Lbi5;->f:Ljava/lang/String;

    .line 5
    iget-object v0, v0, Luj5;->c:Ltj5;

    invoke-interface {v0, v1, v2, v3}, Ltj5;->e(JLjava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
