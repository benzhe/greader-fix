.class public final La25;
.super Lb25;
.source "SourceFile"


# instance fields
.field public final d:Landroid/app/AlarmManager;

.field public final e:Lis4;

.field public f:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Lj25;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lb25;-><init>(Lj25;)V

    iget-object v0, p0, Lly4;->a:Lrx4;

    .line 2
    iget-object v0, v0, Lrx4;->a:Landroid/content/Context;

    const-string v1, "alarm"

    .line 3
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, La25;->d:Landroid/app/AlarmManager;

    new-instance v0, Lz15;

    .line 4
    iget-object v1, p1, Lj25;->j:Lrx4;

    .line 5
    invoke-direct {v0, p0, v1, p1}, Lz15;-><init>(La25;Lny4;Lj25;)V

    iput-object v0, p0, La25;->e:Lis4;

    return-void
.end method


# virtual methods
.method public final h()Z
    .locals 2

    iget-object v0, p0, La25;->d:Landroid/app/AlarmManager;

    .line 1
    invoke-virtual {p0}, La25;->l()Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lly4;->a:Lrx4;

    .line 3
    iget-object v0, v0, Lrx4;->a:Landroid/content/Context;

    const-string v1, "jobscheduler"

    .line 4
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/job/JobScheduler;

    .line 5
    invoke-virtual {p0}, La25;->k()I

    move-result v1

    .line 6
    invoke-virtual {v0, v1}, Landroid/app/job/JobScheduler;->cancel(I)V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final i()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lb25;->f()V

    iget-object v0, p0, Lly4;->a:Lrx4;

    .line 2
    invoke-virtual {v0}, Lrx4;->a()Lqw4;

    move-result-object v0

    .line 3
    iget-object v0, v0, Lqw4;->n:Low4;

    const-string v1, "Unscheduling upload"

    .line 4
    invoke-virtual {v0, v1}, Low4;->a(Ljava/lang/String;)V

    iget-object v0, p0, La25;->d:Landroid/app/AlarmManager;

    .line 5
    invoke-virtual {p0}, La25;->l()Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    iget-object v0, p0, La25;->e:Lis4;

    .line 6
    invoke-virtual {v0}, Lis4;->c()V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 7
    iget-object v0, p0, Lly4;->a:Lrx4;

    .line 8
    iget-object v0, v0, Lrx4;->a:Landroid/content/Context;

    const-string v1, "jobscheduler"

    .line 9
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/job/JobScheduler;

    .line 10
    invoke-virtual {p0}, La25;->k()I

    move-result v1

    .line 11
    invoke-virtual {v0, v1}, Landroid/app/job/JobScheduler;->cancel(I)V

    :cond_0
    return-void
.end method

.method public final k()I
    .locals 3

    iget-object v0, p0, La25;->f:Ljava/lang/Integer;

    if-nez v0, :cond_1

    iget-object v0, p0, Lly4;->a:Lrx4;

    .line 1
    iget-object v0, v0, Lrx4;->a:Landroid/content/Context;

    .line 2
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "measurement"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/String;

    .line 4
    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, La25;->f:Ljava/lang/Integer;

    :cond_1
    iget-object v0, p0, La25;->f:Ljava/lang/Integer;

    .line 5
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public final l()Landroid/app/PendingIntent;
    .locals 3

    iget-object v0, p0, Lly4;->a:Lrx4;

    .line 1
    iget-object v0, v0, Lrx4;->a:Landroid/content/Context;

    .line 2
    new-instance v1, Landroid/content/Intent;

    .line 3
    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.google.android.gms.measurement.AppMeasurementReceiver"

    .line 4
    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "com.google.android.gms.measurement.UPLOAD"

    .line 5
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const/4 v2, 0x0

    .line 6
    invoke-static {v0, v2, v1, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method
