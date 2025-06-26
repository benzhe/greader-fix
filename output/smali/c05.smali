.class public final Lc05;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:La05;

.field public final synthetic f:La05;

.field public final synthetic g:J

.field public final synthetic h:Z

.field public final synthetic i:Lh05;


# direct methods
.method public constructor <init>(Lh05;La05;La05;JZ)V
    .locals 0

    iput-object p1, p0, Lc05;->i:Lh05;

    iput-object p2, p0, Lc05;->e:La05;

    iput-object p3, p0, Lc05;->f:La05;

    iput-wide p4, p0, Lc05;->g:J

    iput-boolean p6, p0, Lc05;->h:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget-object v0, p0, Lc05;->i:Lh05;

    iget-object v1, p0, Lc05;->e:La05;

    iget-object v2, p0, Lc05;->f:La05;

    iget-wide v3, p0, Lc05;->g:J

    iget-boolean v5, p0, Lc05;->h:Z

    const/4 v6, 0x0

    .line 1
    invoke-virtual/range {v0 .. v6}, Lh05;->k(La05;La05;JZLandroid/os/Bundle;)V

    return-void
.end method
