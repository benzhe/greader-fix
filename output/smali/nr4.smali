.class public final Lnr4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmr4;
.implements Landroid/os/IInterface;


# instance fields
.field public final e:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnr4;->e:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 1
    iget-object v0, p0, Lnr4;->e:Landroid/os/IBinder;

    return-object v0
.end method
