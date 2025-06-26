.class public final Le05;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:J

.field public final synthetic f:Lh05;


# direct methods
.method public constructor <init>(Lh05;J)V
    .locals 0

    iput-object p1, p0, Le05;->f:Lh05;

    iput-wide p2, p0, Le05;->e:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Le05;->f:Lh05;

    iget-object v0, v0, Lly4;->a:Lrx4;

    .line 1
    invoke-virtual {v0}, Lrx4;->c()Lxu4;

    move-result-object v0

    iget-wide v1, p0, Le05;->e:J

    .line 2
    invoke-virtual {v0, v1, v2}, Lxu4;->h(J)V

    iget-object v0, p0, Le05;->f:Lh05;

    const/4 v1, 0x0

    iput-object v1, v0, Lh05;->e:La05;

    return-void
.end method
