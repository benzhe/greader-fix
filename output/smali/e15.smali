.class public final Le15;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Lg15;


# direct methods
.method public constructor <init>(Lg15;)V
    .locals 0

    iput-object p1, p0, Le15;->e:Lg15;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Le15;->e:Lg15;

    iget-object v0, v0, Lg15;->c:Lh15;

    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, v0, Lly4;->a:Lrx4;

    .line 1
    iget-object v2, v2, Lrx4;->a:Landroid/content/Context;

    .line 2
    iget-object v3, p0, Le15;->e:Lg15;

    iget-object v3, v3, Lg15;->c:Lh15;

    iget-object v3, v3, Lly4;->a:Lrx4;

    .line 3
    iget-object v3, v3, Lrx4;->f:Lc35;

    const-string v3, "com.google.android.gms.measurement.AppMeasurementService"

    .line 4
    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 5
    invoke-static {v0, v1}, Lh15;->q(Lh15;Landroid/content/ComponentName;)V

    return-void
.end method
