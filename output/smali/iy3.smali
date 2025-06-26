.class public abstract Liy3;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Liy3;

.field public static final b:Liy3;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lky3;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lky3;-><init>(Ljy3;)V

    sput-object v0, Liy3;->a:Liy3;

    new-instance v0, Lly3;

    invoke-direct {v0, v1}, Lly3;-><init>(Ljy3;)V

    sput-object v0, Liy3;->b:Liy3;

    return-void
.end method

.method public constructor <init>(Ljy3;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a(Ljava/lang/Object;J)V
.end method

.method public abstract b(Ljava/lang/Object;Ljava/lang/Object;J)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<",
            "L:Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "J)V"
        }
    .end annotation
.end method
