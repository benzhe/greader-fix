.class public final synthetic Lqe5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbb6;


# static fields
.field public static final a:Lqe5;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lqe5;

    invoke-direct {v0}, Lqe5;-><init>()V

    sput-object v0, Lqe5;->a:Lqe5;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    check-cast p1, Landroid/content/Context;

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    iget p1, p1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    return-object p1
.end method
