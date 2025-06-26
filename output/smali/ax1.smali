.class public final Lax1;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final d:Lef0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lef0<",
            "Lax1;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Ldx1;

.field public final b:Lorg/json/JSONObject;

.field public final c:Lsm0;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lzw1;

    invoke-direct {v0}, Lzw1;-><init>()V

    sput-object v0, Lax1;->d:Lef0;

    return-void
.end method

.method public constructor <init>(Ldx1;Lorg/json/JSONObject;Lsm0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lax1;->a:Ldx1;

    .line 3
    iput-object p2, p0, Lax1;->b:Lorg/json/JSONObject;

    .line 4
    iput-object p3, p0, Lax1;->c:Lsm0;

    return-void
.end method
