.class public abstract Lyo5;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lyo5$d;,
        Lyo5$a;,
        Lyo5$b;,
        Lyo5$e;,
        Lyo5$c;
    }
.end annotation


# static fields
.field public static final a:Lyo5$e;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lyo5$e;

    invoke-direct {v0}, Lyo5$e;-><init>()V

    sput-object v0, Lyo5;->a:Lyo5$e;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a()Ljava/lang/String;
.end method
