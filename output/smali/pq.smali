.class public Lpq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:I

.field public final synthetic f:Lcom/google/android/apps/dashclock/api/DashClockExtension$a;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/dashclock/api/DashClockExtension$a;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lpq;->f:Lcom/google/android/apps/dashclock/api/DashClockExtension$a;

    iput p2, p0, Lpq;->e:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lpq;->f:Lcom/google/android/apps/dashclock/api/DashClockExtension$a;

    iget-object v0, v0, Lcom/google/android/apps/dashclock/api/DashClockExtension$a;->e:Lcom/google/android/apps/dashclock/api/DashClockExtension;

    iget v1, p0, Lpq;->e:I

    invoke-virtual {v0, v1}, Lcom/google/android/apps/dashclock/api/DashClockExtension;->b(I)V

    return-void
.end method
