.class public final synthetic Lvb2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrb2;


# static fields
.field public static final a:Lrb2;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lvb2;

    invoke-direct {v0}, Lvb2;-><init>()V

    sput-object v0, Lvb2;->a:Lrb2;

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

    const-string v0, "native_version"

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method
