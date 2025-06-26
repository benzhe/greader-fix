.class public final synthetic Lk15;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final e:Ln15;

.field public final f:Lqw4;

.field public final g:Landroid/app/job/JobParameters;


# direct methods
.method public constructor <init>(Ln15;Lqw4;Landroid/app/job/JobParameters;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lk15;->e:Ln15;

    iput-object p2, p0, Lk15;->f:Lqw4;

    iput-object p3, p0, Lk15;->g:Landroid/app/job/JobParameters;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lk15;->e:Ln15;

    iget-object v1, p0, Lk15;->f:Lqw4;

    iget-object v2, p0, Lk15;->g:Landroid/app/job/JobParameters;

    .line 1
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v1, v1, Lqw4;->n:Low4;

    const-string v3, "AppMeasurementJobService processed last upload request."

    .line 3
    invoke-virtual {v1, v3}, Low4;->a(Ljava/lang/String;)V

    iget-object v0, v0, Ln15;->a:Landroid/content/Context;

    check-cast v0, Lm15;

    const/4 v1, 0x0

    invoke-interface {v0, v2, v1}, Lm15;->a(Landroid/app/job/JobParameters;Z)V

    return-void
.end method
