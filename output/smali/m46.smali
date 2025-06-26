.class public final synthetic Lm46;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrc7;


# static fields
.field public static final a:Lm46;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lm46;

    invoke-direct {v0}, Lm46;-><init>()V

    sput-object v0, Lm46;->a:Lm46;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Ljava/lang/String;

    check-cast p2, Lea6;

    .line 1
    new-instance v0, Li26;

    invoke-direct {v0, p1, p2}, Li26;-><init>(Ljava/lang/String;Lea6;)V

    return-object v0
.end method
