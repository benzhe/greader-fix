.class public final Lx20$a$a;
.super Ld24;
.source "SourceFile"

# interfaces
.implements Lx20;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lx20$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# direct methods
.method public constructor <init>(Landroid/os/IBinder;)V
    .locals 1

    const-string v0, "com.google.android.gms.dynamic.IObjectWrapper"

    .line 1
    invoke-direct {p0, p1, v0}, Ld24;-><init>(Landroid/os/IBinder;Ljava/lang/String;)V

    return-void
.end method
