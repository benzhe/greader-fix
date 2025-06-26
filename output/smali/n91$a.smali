.class public final Ln91$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln91;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Landroid/content/Context;

.field public b:Lll2;

.field public c:Landroid/os/Bundle;

.field public d:Ljava/lang/String;

.field public e:Lgl2;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ln91;
    .locals 2

    .line 1
    new-instance v0, Ln91;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ln91;-><init>(Ln91$a;Lm91;)V

    return-object v0
.end method
