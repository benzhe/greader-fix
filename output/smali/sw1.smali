.class public final synthetic Lsw1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbf0;


# static fields
.field public static final a:Lbf0;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lsw1;

    invoke-direct {v0}, Lsw1;-><init>()V

    sput-object v0, Lsw1;->a:Lbf0;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 1

    new-instance v0, Lsm0;

    invoke-direct {v0, p1}, Lsm0;-><init>(Lorg/json/JSONObject;)V

    return-object v0
.end method
