.class abstract enum Lcm$b;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4408
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcm$b;",
        ">;",
        "Lcl",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcm$b;

.field public static final enum b:Lcm$b;

.field public static final enum c:Lcm$b;

.field public static final enum d:Lcm$b;

.field private static final synthetic e:[Lcm$b;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 277
    new-instance v0, Lcm$b$1;

    const-string v1, "ALWAYS_TRUE"

    invoke-direct {v0, v1}, Lcm$b$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcm$b;->a:Lcm$b;

    .line 286
    new-instance v0, Lcm$b$2;

    const-string v1, "ALWAYS_FALSE"

    invoke-direct {v0, v1}, Lcm$b$2;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcm$b;->b:Lcm$b;

    .line 295
    new-instance v0, Lcm$b$3;

    const-string v1, "IS_NULL"

    invoke-direct {v0, v1}, Lcm$b$3;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcm$b;->c:Lcm$b;

    .line 304
    new-instance v0, Lcm$b$4;

    const-string v1, "NOT_NULL"

    invoke-direct {v0, v1}, Lcm$b$4;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcm$b;->d:Lcm$b;

    .line 275
    const/4 v0, 0x4

    new-array v0, v0, [Lcm$b;

    const/4 v1, 0x0

    sget-object v2, Lcm$b;->a:Lcm$b;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcm$b;->b:Lcm$b;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcm$b;->c:Lcm$b;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcm$b;->d:Lcm$b;

    aput-object v2, v0, v1

    sput-object v0, Lcm$b;->e:[Lcm$b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 275
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;IB)V
    .locals 0

    .prologue
    .line 275
    invoke-direct {p0, p1, p2}, Lcm$b;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcm$b;
    .locals 1

    .prologue
    .line 275
    const-class v0, Lcm$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcm$b;

    return-object v0
.end method

.method public static values()[Lcm$b;
    .locals 1

    .prologue
    .line 275
    sget-object v0, Lcm$b;->e:[Lcm$b;

    invoke-virtual {v0}, [Lcm$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcm$b;

    return-object v0
.end method
