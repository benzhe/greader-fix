.class public final synthetic Lvg2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lei2;


# static fields
.field public static final a:Lei2;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lvg2;

    invoke-direct {v0}, Lvg2;-><init>()V

    sput-object v0, Lvg2;->a:Lei2;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ldo3;

    invoke-interface {p1}, Ldo3;->onAdImpression()V

    return-void
.end method
