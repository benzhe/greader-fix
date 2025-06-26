.class public final Lyy4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:J

.field public final synthetic f:Lsz4;


# direct methods
.method public constructor <init>(Lsz4;J)V
    .locals 0

    iput-object p1, p0, Lyy4;->f:Lsz4;

    iput-wide p2, p0, Lyy4;->e:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lyy4;->f:Lsz4;

    iget-object v0, v0, Lly4;->a:Lrx4;

    .line 1
    invoke-virtual {v0}, Lrx4;->q()Lex4;

    move-result-object v0

    .line 2
    iget-object v0, v0, Lex4;->p:Lbx4;

    iget-wide v1, p0, Lyy4;->e:J

    invoke-virtual {v0, v1, v2}, Lbx4;->b(J)V

    iget-object v0, p0, Lyy4;->f:Lsz4;

    iget-object v0, v0, Lly4;->a:Lrx4;

    .line 3
    invoke-virtual {v0}, Lrx4;->a()Lqw4;

    move-result-object v0

    .line 4
    iget-object v0, v0, Lqw4;->m:Low4;

    .line 5
    iget-wide v1, p0, Lyy4;->e:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "Session timeout duration set"

    invoke-virtual {v0, v2, v1}, Low4;->b(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
