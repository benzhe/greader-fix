.class public final synthetic Liq0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcq0$b;


# static fields
.field public static final a:Lcq0$b;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Liq0;

    invoke-direct {v0}, Liq0;-><init>()V

    sput-object v0, Liq0;->a:Lcq0$b;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lny0;)Ljava/lang/Object;
    .locals 0

    invoke-interface {p1}, Lny0;->Y1()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
