.class public final synthetic Ljq0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcq0$b;


# static fields
.field public static final a:Lcq0$b;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljq0;

    invoke-direct {v0}, Ljq0;-><init>()V

    sput-object v0, Ljq0;->a:Lcq0$b;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lny0;)Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-interface {p1}, Lny0;->C2()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    invoke-interface {p1}, Lny0;->F4()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    return-object p1

    :cond_1
    const-string p1, ""

    return-object p1
.end method
