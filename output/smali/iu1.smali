.class public final synthetic Liu1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljo2;


# static fields
.field public static final a:Ljo2;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Liu1;

    invoke-direct {v0}, Liu1;-><init>()V

    sput-object v0, Liu1;->a:Ljo2;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Exception;

    const-string p1, ""

    return-object p1
.end method
