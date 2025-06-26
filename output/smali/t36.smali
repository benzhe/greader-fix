.class public final synthetic Lt36;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Luc7;


# static fields
.field public static final e:Lt36;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lt36;

    invoke-direct {v0}, Lt36;-><init>()V

    sput-object v0, Lt36;->e:Lt36;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Ljava/util/List;

    const-string v0, "source is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lzg7;

    invoke-direct {v0, p1}, Lzg7;-><init>(Ljava/lang/Iterable;)V

    return-object v0
.end method
