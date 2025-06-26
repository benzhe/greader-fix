.class public Lo75;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final c:Lo75;


# instance fields
.field public final a:Ljava/lang/Long;

.field public final b:Ljava/util/TimeZone;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lo75;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lo75;-><init>(Ljava/lang/Long;Ljava/util/TimeZone;)V

    sput-object v0, Lo75;->c:Lo75;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;Ljava/util/TimeZone;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lo75;->a:Ljava/lang/Long;

    .line 3
    iput-object p1, p0, Lo75;->b:Ljava/util/TimeZone;

    return-void
.end method
