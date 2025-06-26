.class public final synthetic Lnw0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final e:Liu0;

.field public final f:Z

.field public final g:J


# direct methods
.method public constructor <init>(Liu0;ZJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnw0;->e:Liu0;

    iput-boolean p2, p0, Lnw0;->f:Z

    iput-wide p3, p0, Lnw0;->g:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lnw0;->e:Liu0;

    iget-boolean v1, p0, Lnw0;->f:Z

    iget-wide v2, p0, Lnw0;->g:J

    .line 2
    invoke-interface {v0, v1, v2, v3}, Liu0;->R(ZJ)V

    return-void
.end method
