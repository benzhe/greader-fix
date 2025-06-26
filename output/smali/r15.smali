.class public final Lr15;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final e:J

.field public final f:J

.field public final synthetic g:Ls15;


# direct methods
.method public constructor <init>(Ls15;JJ)V
    .locals 0

    iput-object p1, p0, Lr15;->g:Ls15;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p2, p0, Lr15;->e:J

    iput-wide p4, p0, Lr15;->f:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lr15;->g:Ls15;

    iget-object v0, v0, Ls15;->b:Lx15;

    iget-object v0, v0, Lly4;->a:Lrx4;

    .line 1
    invoke-virtual {v0}, Lrx4;->m()Lox4;

    move-result-object v0

    new-instance v1, Lq15;

    .line 2
    invoke-direct {v1, p0}, Lq15;-><init>(Lr15;)V

    invoke-virtual {v0, v1}, Lox4;->q(Ljava/lang/Runnable;)V

    return-void
.end method
