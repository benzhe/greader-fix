.class public abstract Li50;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Li50;

.field public static final b:Li50;

.field public static final c:Li50;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lh50;

    invoke-direct {v0}, Lh50;-><init>()V

    sput-object v0, Li50;->a:Li50;

    .line 2
    new-instance v0, Lk50;

    invoke-direct {v0}, Lk50;-><init>()V

    sput-object v0, Li50;->b:Li50;

    .line 3
    new-instance v0, Lj50;

    invoke-direct {v0}, Lj50;-><init>()V

    sput-object v0, Li50;->c:Li50;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method
