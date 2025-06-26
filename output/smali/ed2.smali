.class public final synthetic Led2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnd2;


# static fields
.field public static final a:Lnd2;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Led2;

    invoke-direct {v0}, Led2;-><init>()V

    sput-object v0, Led2;->a:Lnd2;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Landroid/os/Bundle;

    const-string v0, "sdk_prefetch"

    const/4 v1, 0x1

    .line 2
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method
