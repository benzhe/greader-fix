.class public Lj57$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lj57;->k(Ln87;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic e:Ln87;

.field public final synthetic f:Lj57;


# direct methods
.method public constructor <init>(Lj57;Ln87;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lj57$b;->f:Lj57;

    iput-object p2, p0, Lj57$b;->e:Ln87;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lj57$b;->f:Lj57;

    .line 2
    iget-object v0, v0, Lj57;->f:Ld87;

    .line 3
    iget-object v1, p0, Lj57$b;->e:Ln87;

    invoke-virtual {v0, v1}, Ld87;->k(Ln87;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 4
    iget-object v1, p0, Lj57$b;->f:Lj57;

    .line 5
    iget-object v2, v1, Lj57;->g:Lj57$i;

    new-instance v3, Lj57$g;

    invoke-direct {v3, v1, v0}, Lj57$g;-><init>(Lj57;Ljava/lang/Throwable;)V

    invoke-interface {v2, v3}, Lj57$i;->b(Ljava/lang/Runnable;)V

    .line 6
    iget-object v0, p0, Lj57$b;->f:Lj57;

    .line 7
    iget-object v0, v0, Lj57;->f:Ld87;

    .line 8
    invoke-virtual {v0}, Ld87;->close()V

    :goto_0
    return-void
.end method
