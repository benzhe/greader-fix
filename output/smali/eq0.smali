.class public final synthetic Leq0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcq0$b;


# static fields
.field public static final a:Lcq0$b;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Leq0;

    invoke-direct {v0}, Leq0;-><init>()V

    sput-object v0, Leq0;->a:Lcq0$b;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lny0;)Ljava/lang/Object;
    .locals 2

    invoke-interface {p1}, Lny0;->u2()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method
